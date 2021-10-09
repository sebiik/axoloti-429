#include "stm32f4xx.h"
#include "bsp_led.h"
#include "bsp_key.h"
#include "bsp_spi_flash.h"
#include "bsp_sdram.h"
#include "bsp_debug_usart.h"


typedef enum { FAILED = 0, PASSED = !FAILED} TestStatus;

/* ��ȡ�������ĳ��� */
#define TxBufferSize1   (countof(TxBuffer1) - 1)
#define RxBufferSize1   (countof(TxBuffer1) - 1)
#define countof(a)      (sizeof(a) / sizeof(*(a)))
#define  BufferSize (countof(Tx_Buffer)-1)

#define  FLASH_WriteAddress     0x00000
#define  FLASH_ReadAddress      FLASH_WriteAddress
#define  FLASH_SectorToErase    FLASH_WriteAddress
   
/* ���ͻ�������ʼ�� */
uint8_t Tx_Buffer[] = "��л��ʹ�ð�����STM32F429������\r\nhttp://www.lctech-inc.com/";
uint8_t Rx_Buffer[BufferSize];

//��ȡ��ID�洢λ��
__IO uint32_t DeviceID = 0;
__IO uint32_t FlashID = 0;
__IO TestStatus TransferStatus1 = FAILED;




/*���Զ�λ��ʽ����SDRAM,���ַ�ʽ���붨���ȫ�ֱ���*/
uint8_t testValue __attribute__((at(SDRAM_BANK_ADDR)));


void Delay(__IO uint32_t nCount)     //�򵥵���ʱ����
{
  for(; nCount != 0; nCount--);
}


/*
 * ��������Buffercmp
 * ����  ���Ƚ������������е������Ƿ����
 * ����  ��-pBuffer1     src������ָ��
 *         -pBuffer2     dst������ָ��
 *         -BufferLength ����������
 * ���  ����
 * ����  ��-PASSED pBuffer1 ����   pBuffer2
 *         -FAILED pBuffer1 ��ͬ�� pBuffer2
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
  printf("\r\n\r\n\r\n������STM32F429������ W25Q128����\r\n");
	
	/* 16M����flash W25Q128��ʼ�� */
	SPI_FLASH_Init();
	
	/* ��ȡ Flash Device ID */
	DeviceID = SPI_FLASH_ReadDeviceID();
	
	Delay( 200 );
	
	/* ��ȡ SPI Flash ID */
	FlashID = SPI_FLASH_ReadID();
	
	printf("\r\nFlashID is 0x%X,  Manufacturer Device ID is 0x%X\r\n", FlashID, DeviceID);
	
	/* ���� SPI Flash ID */
	if (FlashID == sFLASH_ID) 
	{	
		printf("\r\n��⵽SPI FLASH W25Q128 !\r\n");
		
		/* ������Ҫд��� SPI FLASH ������FLASHд��ǰҪ�Ȳ��� */
		SPI_FLASH_SectorErase(FLASH_SectorToErase);	 	 
		
		/* �����ͻ�����������д��flash�� */
		SPI_FLASH_BufferWrite(Tx_Buffer, FLASH_WriteAddress, BufferSize);
		printf("\r\nд�������Ϊ��\r\n%s", Tx_Buffer);
		
		/* ���ո�д������ݶ������ŵ����ջ������� */
		SPI_FLASH_BufferRead(Rx_Buffer, FLASH_ReadAddress, BufferSize);
		printf("\r\n����������Ϊ��\r\n%s", Rx_Buffer);
		
		/* ���д�������������������Ƿ���� */
		TransferStatus1 = Buffercmp(Tx_Buffer, Rx_Buffer, BufferSize);
		
		if( PASSED == TransferStatus1 )
		{    
			GPIO_ResetBits(GPIOD,GPIO_Pin_12);                  //W25Q128���Գɹ���D1����
			printf("\r\n16M����flash(W25Q128)���Գɹ�!\n\r");
		}
		else
		{        
			GPIO_SetBits(GPIOD,GPIO_Pin_12);                  //W25Q128����ʧ�ܣ�D1Ϩ��
			printf("\r\n16M����flash(W25Q128)����ʧ��!\n\r");
		}
	}// if (FlashID == sFLASH_ID)
	else
	{    
		GPIO_SetBits(GPIOD,GPIO_Pin_12);                  //��ȡW25Q128 ID��ʧ�ܣ�D1Ϩ��
		printf("\r\n��ȡ���� W25Q128 ID!\n\r");
	}
	
	SPI_Flash_PowerDown();  
}






void SDRAM_Test_All(void)
{
	
	printf("\r\n\r\n\r\n������STM32F429������ SDRAM ��д����\r\n\r\n");
  
	SDRAM_Test();
	
	/*ָ�뷽ʽ����SDRAM*/
	{	
	 uint32_t temp;
	
	 printf("\r\nָ�뷽ʽ����SDRAM\r\n");
	/*��SDRAMд��8λ����*/
	 *( uint8_t*) (SDRAM_BANK_ADDR ) = (uint8_t)0xAA;
	 printf("\r\nָ�����SDRAM��д������0xAA \r\n");

	 /*��SDRAM��ȡ����*/
	 temp =  *( uint8_t*) (SDRAM_BANK_ADDR );
	 printf("��ȡ���ݣ�0x%X \r\n",temp);

	 /*д/�� 16λ����*/
	 *( uint16_t*) (SDRAM_BANK_ADDR+10 ) = (uint16_t)0xBBBB;
	 printf("ָ�����SDRAM��д������0xBBBB \r\n");
	 
	 temp =  *( uint16_t*) (SDRAM_BANK_ADDR+10 );
	 printf("��ȡ���ݣ�0x%X \r\n",temp);


	 /*д/�� 32λ����*/
	 *( uint32_t*) (SDRAM_BANK_ADDR+20 ) = (uint32_t)0xCCCCCCCC;
	 printf("ָ�����SDRAM��д������0xCCCCCCCC \r\n");	 
	 temp =  *( uint32_t*) (SDRAM_BANK_ADDR+20 );
	 printf("��ȡ���ݣ�0x%X \r\n",temp);

	}
	
	/*���Զ�λ��ʽ����SDRAM,���ַ�ʽ���붨���ȫ�ֱ���*/
	{
		testValue = 0xDD;
		printf("\r\n���Զ�λ����SDRAM��д������0xDD,��������0x%X,������ַΪ%X\r\n",testValue,(uint32_t )&testValue);	 
	}
}




int main(void)
{	
  
	LED_GPIO_Config();       //LED��ʼ��
	Key_GPIO_Config();       //����KEY��ʼ��
	SPI_FLASH_Init();        //SPI�ӿڵ�flashоƬW25Q128��ʼ��
	SDRAM_Init();            //SDRAM��ʼ��
  Debug_USART_Config();   //��ʼ��USART ����ģʽΪ 115200 8-N-1���жϽ���
	SDRAM_Test_All();       //�ϵ�˲����߰���λ��������SDRAM
	
  while(1)
	{	
	
		if( Key_Scan(KEY_GPIO_PORT,KEY_PIN) == KEY_ON)        //����������ʱ����W25Q128
		{
			SPI_Test_All();
		}   
	}	
}


