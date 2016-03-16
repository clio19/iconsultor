module JobsHelper
    def job_title(job)
    title = raw("#{h(job.title)} - #{job.company.email}")

    if job.prime
      title + content_tag(:strong, " (prime)")
    else
      title
    end
  end
end