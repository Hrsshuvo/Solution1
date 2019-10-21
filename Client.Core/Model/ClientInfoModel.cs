using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Client.Core.Model
{
    public class ClientInfoModel
    {
        public int Id { get; set; }
        public string Date { get; set; }
        public int Code { get; set; }
        public string ClientName { get; set; }
        public string CompanyName { get; set; }
        public string ClientContruct { get; set; }
        public string ConpanyContruct { get; set; }
        public string Address { get; set; }
        public string ParnamentAddress { get; set; }
        public string VisitingPurpose { get; set; }
        public string NextShedule { get; set; }
        public string NextSheduleDate { get; set; }
        public string ProposalSubmission { get; set; }
        public DateTime ProposalSubmissionDate { get; set; }
        public string Note { get; set; }
        public string Status { get; set; }
        public string Time { get; set; }
        public string Note2 { get; set; }
    }
}
