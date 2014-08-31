class ApplicationPolicy
  attr_reader :user, :scope

  def self.permit(*methods)
    methods.each do |method|
      define_method("#{method}?") { true }
    end
  end

  def initialize(user, scope)
    @user = user || User.new(role: nil)
    @scope = scope
  end

  def index?; false; end

  def show?; false; end

  def create?; false; end

  def new?; create?; end

  def update?; false; end

  def edit?; update?; end

  def destroy?; false; end
end
