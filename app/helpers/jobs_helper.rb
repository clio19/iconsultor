module JobsHelper
    def job_title(job)
    title = h(job.title)

    if job.prime
      title + content_tag(:strong, " (prime)")
    else
      title
    end
  end
end