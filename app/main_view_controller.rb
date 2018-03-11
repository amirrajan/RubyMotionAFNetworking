class MainViewController < UIViewController
  def viewDidLoad
    get_json
  end

  def get_json
    manager = AFHTTPSessionManager.manager
    manager.GET("https://jsonplaceholder.typicode.com/posts",
                parameters:nil,
                progress:nil,
                success: lambda do |task, response_object|
                  NSLog("#{response_object}")
                end,
                failure: lambda do |operation, error|
                  NSLog("#{error}");
                end);
  end
end
