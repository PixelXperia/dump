.class Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;
.super Lcom/android/internal/util/State;
.source "NavigationBarLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 176
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
