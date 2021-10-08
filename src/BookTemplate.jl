module BookTemplate

using Reexport
@reexport using Books
@reexport using DataFrames

"""
    build()

This function is called during CI.
"""
function build()
    println("Building ResearchBook")
    # Fail on error to avoid broken websites.
    Books.gen(; fail_on_error = true)
    Books.build_all()
end

end # module

