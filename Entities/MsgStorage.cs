using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace br.com.maginet.Entities
{
    public class MsgStorage
    {
        [Key]
        public int MsgID { get; set; }
        public string From { get; set; }
        public string Text { get; set; }
        public DateTime? MsgTimeStamp { get; set; }
        public DateTime? TimeStamp { get; set; }
    }
}
