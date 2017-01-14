module JobsHelper
  def render_job_description(job)
    simple_format(job.description)
  end

  def render_job_status(job)
    if job.is_hidden
      "(hidden)"
    else
      "(public)"
    end
  end

end
