#include "stm32f4xx.h"
#include "bsp_led.h"
#include "bsp_key.h"
#include "bsp_spi_flash.h"
#include "bsp_sdram.h"
#include "bsp_debug_usart.h"


typedef enum { FAILED = 0, PASSED = !FAILED} TestStatus;

/* 获取缓冲区的长度 */
#define TxBufferSize1   (countof(TxBuffer1) - 1)
#define RxBufferSize1   (countof(TxBuffer1) - 1)
#define countof(a)      (sizeof(a) / sizeof(*(a)))
#define  BufferSize (countof(Tx_Buffer)-1)

#define  FLASH_WriteAddress     0x00000
#define  FLASH_ReadAddress      FLASH_WriteAddress
#define  FLASH_SectorToErase    FLASH_WriteAddress
   
/* 发送缓冲区初始化 */
uint8_t Tx_Buffer[] = "感谢您使用艾尔赛STM32F429开发板\r\nhttp://www.lctech-inc.com/";
uint8_t Rx_Buffer[BufferSize];

//读取的ID存储位置
__IO uint32_t DeviceID = 0;
__IO uint32_t FlashID = 0;
__IO TestStatus TransferStatus1 = FAILED;




/*绝对定位方式访问SDRAM,这种方式必须定义成全局变量*/
uint8_t testValue __attribute__((at(SDRAM_BANK_ADDR)));


void Delay(__IO uint32_t nCount)     //简单的延时函数
{
  for(; nCount != 0; nCount--);
}


/*
 * 函数名：Buffercmp
 * 描述  ：比较两个缓冲区中的数据是否相等
 * 输入  ：-pBuffer1     src缓冲区指针
 *         -pBuffer2     dst缓冲区指针
 *         -BufferLength 缓冲区长度
 * 输出  ：无
 * 返回  ：-PASSED pBuffer1 等于   pBuffer2
 *         -FAILED pBuffer1 不同于 pBuffer2
 */
TestStatus Buffercmp(uint8_t* pBuffer1, uint8_t* pBuffer2, uint16_t BufferLength)
{
  while(BufferLength--)
  {
    if(*pBuffer1 != *pBuffer2)
    {
      return FAILED;
    }

    pBuffer1++;
    pBuffer2++;
  }
  return PASSED;
}





void SPI_Test_All(void)
{
  printf("\r\n\r\n\r\n艾尔赛STM32F429开发板 W25Q128测试\r\n");
	
	/* 16M串行flash W25Q128初始化 */
	SPI_FLASH_Init();
	
	/* 获取 Flash Device ID */
	DeviceID = SPI_FLASH_ReadDeviceID();
	
	Delay( 200 );
	
	/* 获取 SPI Flash ID */
	FlashID = SPI_FLASH_ReadID();
	
	printf("\r\nFlashID is 0x%X,  Manufacturer Device ID is 0x%X\r\n", FlashID, DeviceID);
	
	/* 检验 SPI Flash ID */
	if (FlashID == sFLASH_ID) 
	{	
		printf("\r\n检测到SPI FLASH W25Q128 !\r\n");
		
		/* 擦除将要写入的 SPI FLASH 扇区，FLASH写入前要先擦除 */
		SPI_FLASH_SectorErase(FLASH_SectorToErase);	 	 
		
		/* 将发送缓冲区的数据写到flash中 */
		SPI_FLASH_BufferWrite(Tx_Buffer, FLASH_WriteAddress, BufferSize);
		printf("\r\n写入的数据为：\r\n%s", Tx_Buffer);
		
		/* 将刚刚写入的数据读出来放到接收缓冲区中 */
		SPI_FLASH_BufferRead(Rx_Buffer, FLASH_ReadAddress, BufferSize);
		printf("\r\n读出的数据为：\r\n%s", Rx_Buffer);
		
		/* 检查写入的数据与读出的数据是否相等 */
		TransferStatus1 = Buffercmp(Tx_Buffer, Rx_Buffer, BufferSize);
		
		if( PASSED == TransferStatus1 )
		{    
			GPIO_ResetBits(GPIOD,GPIO_Pin_12);                  //W25Q128测试成功，D1点亮
			printf("\r\n16M串行flash(W25Q128)测试成功!\n\r");
		}
		else
		{        
			GPIO_SetBits(GPIOD,GPIO_Pin_12);                  //W25Q128测试失败，D1熄灭
			printf("\r\n16M串行flash(W25Q128)测试失败!\n\r");
		}
	}// if (FlashID == sFLASH_ID)
	else
	{    
		GPIO_SetBits(GPIOD,GPIO_Pin_12);                  //获取W25Q128 ID号失败，D1熄灭
		printf("\r\n获取不到 W25Q128 ID!\n\r");
	}
	
	SPI_Flash_PowerDown();  
}






void SDRAM_Test_All(void)
{
	
	printf("\r\n\r\n\r\n艾尔赛STM32F429开发板 SDRAM 读写测试\r\n\r\n");
  
	SDRAM_Test();
	
	/*指针方式访问SDRAM*/
	{	
	 uint32_t temp;
	
	 printf("\r\n指针方式访问SDRAM\r\n");
	/*向SDRAM写入8位数据*/
	 *( uint8_t*) (SDRAM_BANK_ADDR ) = (uint8_t)0xAA;
	 printf("\r\n指针访问SDRAM，写入数据0xAA \r\n");

	 /*从SDRAM读取数据*/
	 temp =  *( uint8_t*) (SDRAM_BANK_ADDR );
	 printf("读取数据：0x%X \r\n",temp);

	 /*写/读 16位数据*/
	 *( uint16_t*) (SDRAM_BANK_ADDR+10 ) = (uint16_t)0xBBBB;
	 printf("指针访问SDRAM，写入数据0xBBBB \r\n");
	 
	 temp =  *( uint16_t*) (SDRAM_BANK_ADDR+10 );
	 printf("读取数据：0x%X \r\n",temp);


	 /*写/读 32位数据*/
	 *( uint32_t*) (SDRAM_BANK_ADDR+20 ) = (uint32_t)0xCCCCCCCC;
	 printf("指针访问SDRAM，写入数据0xCCCCCCCC \r\n");	 
	 temp =  *( uint32_t*) (SDRAM_BANK_ADDR+20 );
	 printf("读取数据：0x%X \r\n",temp);

	}
	
	/*绝对定位方式访问SDRAM,这种方式必须定义成全局变量*/
	{
		testValue = 0xDD;
		printf("\r\n绝对定位访问SDRAM，写入数据0xDD,读出数据0x%X,变量地址为%X\r\n",testValue,(uint32_t )&testValue);	 
	}
}




int main(void)
{	
  
	LED_GPIO_Config();       //LED初始化
	Key_GPIO_Config();       //按键KEY初始化
	SPI_FLASH_Init();        //SPI接口的flash芯片W25Q128初始化
	SDRAM_Init();            //SDRAM初始化
  Debug_USART_Config();   //初始化USART 配置模式为 115200 8-N-1，中断接收
	SDRAM_Test_All();       //上电瞬间或者按复位按键测试SDRAM
	
  while(1)
	{	
	
		if( Key_Scan(KEY_GPIO_PORT,KEY_PIN) == KEY_ON)        //当按键按下时测试W25Q128
		{
			SPI_Test_All();
		}   
	}	
}


