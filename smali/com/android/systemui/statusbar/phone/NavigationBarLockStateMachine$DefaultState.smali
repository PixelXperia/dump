.class Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NavigationBarLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field private mPreReqMet:Z

.field private mTouchPressed:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mPreReqMet:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mTouchPressed:Z

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 146
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mPreReqMet:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    if-ne v0, p1, :cond_2

    .line 148
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mTouchPressed:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    if-ne v0, p1, :cond_4

    .line 150
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mTouchPressed:Z

    .line 155
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mPreReqMet:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->mTouchPressed:Z

    if-nez p1, :cond_3

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_3
    return v2

    :cond_4
    return v1
.end method
