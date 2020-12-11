using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject1
{
    [TestMethod]
    public class frmdangnhap
    {
        public void btndangnhap_Click()
        {
            bool result = frmdangnhap.btndangnhap_Click("admin", "1234");
            Assert.AreEqual(false, result);
        }
    }
}
