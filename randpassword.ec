/*************************************************
  文件名：randpassowrd.ec
  Copyright (C), 2016, ELE-Clouds.All rights reserved.
  作者：ELE-Clouds
  日期：2016年9月7日
  版本：V0.01
  描述:           // 用于详细说明此程序文件完成的主要功能，与其他模块
                  // 或函数的接口，输出值、取值范围、含义及参数间的控
                  // 制、顺序、独立或依赖等关系
  主要函数列表:   //每条记录应包括函数名及功能简要说明
    1. ....
  修改历史记录：: //每条修改记录应包括修改日期、修改者及修改内容简述
    1.修改日期:
       修改人:
       修改内容:
    2. ....
*************************************************/
import "ecere"



/*************************************************
  函数名称：Password     // 函数名称
  描述:                  // 函数功能、性能等的描述
      根据参数设置生成一串随机密码。
  调用函数：             // 被本函数调用的函数清单
  被调用函数：          // 调用本函数的函数清单
  访问表:               // 被访问的表（此项仅对于牵扯到数据库操作的程序）
  修改表:               // 被修改的表（此项仅对于牵扯到数据库操作的程序）
  输入参数:               // 输入参数说明，包括每个参数的作
      无                  // 用、取值说明及参数间关系。
  输出参数:               // 对输出参数的说明。
  返回值:                  // 函数返回值的说明
      pass     生成的随机密码字符串。
  其它说明:               // 其它说明
*************************************************/
String Password(int length)
{

   String pass = new char[length];
   int i;
   for(i = 0; i < length; i++)
   {
         //switch(numChar[GetRandom(1,lenNum)])   //numChar[]数组用于存放大、小字母、数字、特殊字符的Swich序号，lenNum为numChar[]数组的长度。
         switch(GetRandom(1,3))
         {
            case 1:pass[i] = (char)GetRandom('A', 'Z');break;
            case 2:pass[i] = (char)GetRandom('a', 'z');break;
            case 3:pass[i] = (char)GetRandom('0', '9');break;
            //case 4:pass[i] = SpecialChar[GetRandom(0, 9)];break;   //字符数组，用于存放特殊字符
         }
   }
    pass[i] = 0;
    return pass;
}



/*************************************************
  类名称：randpass     // 类名称
  描述：本类主要用于生成随机密码前的参数设置与调用。        // 类功能、性能等的描述
  调用函数：             // 被本函数调用的函数清单
  被调用函数：          // 调用本函数的函数清单
  访问表:               // 被访问的表（此项仅对于牵扯到数据库操作的程序）
  修改表:               // 被修改的表（此项仅对于牵扯到数据库操作的程序）
  输入参数:               // 输入参数说明，包括每个参数的作
                        // 用、取值说明及参数间关系。
  输出参数:               // 对输出参数的说明。
  返回值:                  // 函数返回值的说明
  其它说明:               // 其它说明
*************************************************/

/*class randpass
{
   public:
      void setBigLetter(bool _bBigLetter){m_bBigLetter = _bBigLetter;};
      bool getBigLetter(){return m_bBigLetter;};
      void setSmallLetter(bool _bSmallLetter){m_bSmallLetter = _bSmallLetter; };
      bool getSmallLetter(){return m_bSmallLetter;};
      void setNum(bool _bNum){m_bNum = _bNum;};
      bool getNum(){return m_bNum;};
      void setSpecialSymbols(String _strSpecialSymbols){ m_strSpecialSymbols = _strSpecialSymbols; };
      String getSpecialSymbols(){return m_strSpecialSymbols;};
      void setFilterItem(String _strFilterItem){ m_strFilterItem = _strFilterItem;};
      String getFilterItem(){return m_strFilterItem;};
      void setLenth(int _iLenthStart,int _iLenthEnd)
      {
         m_iLenth[1] = _iLenthStart;
         m_iLenth[2] = _iLenthEnd;
      }
      int getLenth[]()
      {
         return m_iLenth;
      }
      void setNumber(int _iNumber){m_iNumber = _iNumber;}
      int getNumber(){return m_iNumber;}
*/
      /*************************************************
        函数名称：Randpass     // 函数名称
        描述:调用参数生成随机密码                  // 函数功能、性能等的描述
        调用函数：             // 被本函数调用的函数清单
        被调用函数：          // 调用本函数的函数清单
        访问表:               // 被访问的表（此项仅对于牵扯到数据库操作的程序）
        修改表:               // 被修改的表（此项仅对于牵扯到数据库操作的程序）
        输入参数:               // 输入参数说明，包括每个参数的作
                              // 用、取值说明及参数间关系。
        输出参数:               // 对输出参数的说明。
        返回值:                  // 函数返回值的说明
        其它说明:               // 其它说明
      *************************************************/
/*      String Randpass()
      {
         int i;
         for(i = 0;i < getNumber(); i++)
         {
 //           String pass = Password(getLenth[2]());
            //PrintLn(pass);

              //case 1:editBox1.contents=pass;break;

            //MessageBox {caption="提示",contents="dd"}.Modal();
//            delete pass;
         }
         return 0;
      }


   private:
      bool m_bBigLetter;               //大写字母，布尔值
      bool m_bSmallLetter;             //小写字母，布尔值
      bool m_bNum;                     //数字，布尔值
      String m_strSpecialSymbols;      //特殊符号，字符串
      String m_strFilterItem;          //排除字符串
      int m_iLenth[2];                 //密码长度
      int m_iNumber;                   //密码个数

};
*/



