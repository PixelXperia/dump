.class Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;
.super Lcom/android/internal/util/State;
.source "NavigationBarLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnlockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 197
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne p1, v1, :cond_1

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
