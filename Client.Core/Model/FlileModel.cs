using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Client.Core.Model
{
    public class FlileModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Byte[] Image { get; set; }
        public int ClientId { get; set; }
    }
}
