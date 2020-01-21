!create driver: Driver
!create turkeyAdapter: TurkeyAdapter
!create wildTurkey: WildTurkey
!insert (turkeyAdapter, wildTurkey) into uses
!insert (driver, turkeyAdapter) into behave

!set turkeyAdapter.turkey := wildTurkey
!set driver.duck := turkeyAdapter

!driver.quack()
!driver.fly()