import Foundation


public struct StripeConfig {
    let apiKey: String
}


enum LogicOperator: String {
    case gt, gte, lt, lte
}

public struct FindChargesFilter {
    let created: Date?
    let createdFilters: [(LogicOperator, Date)]?
    let customer: String?
}

public protocol StripeRequest {



}

public protocol StripeRequestBuilder {

    func findCharges() -> StripeRequest

    func createdOn(date: Date) -> Self

    func created(after: Date, included: Bool) -> Self

    func created(before: Date, included: Bool) -> Self

}


public final class StripeRequestBuilderImpl: StripeRequestBuilder {

    private var created: Date?
    private var createdFilters = [(LogicOperator, Date)]()

    public func created(after: Date, included: Bool) -> StripeRequestBuilder {
        let op:LogicOperator = included ? .gte : .gt
        createdFilters.append((op, after))
        return self
    }

    public func created(before: Date, included: Bool) -> StripeRequestBuilder {
        let op:LogicOperator = included ? .lte : .lt
        createdFilters.append((op, before))
        return self
    }





}
