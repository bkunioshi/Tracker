using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;

namespace br.com.maginet.Entities
{
    public class Trackers:DbContext

    {
        public DbSet<MsgStorage> MsgsStorage { get; set; }
    }
}
