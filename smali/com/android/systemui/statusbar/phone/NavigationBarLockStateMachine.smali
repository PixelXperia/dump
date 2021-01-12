.class Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NavigationBarLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;,
        Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;,
        Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;,
        Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mDefaultState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

.field private mLockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

.field private mPausedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

.field private mReLockDelay:J

.field private mUnlockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NavBarLockStateMachine"

    const/4 v1, 0x3

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "NavBarLockStateMachine"

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 65
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mDefaultState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

    .line 66
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mLockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    .line 67
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUnlockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

    .line 68
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mPausedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

    .line 72
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->DEBUG:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUpdater:Ljava/lang/Runnable;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mDefaultState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mLockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUnlockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mPausedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mDefaultState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mLockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUnlockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$UnlockedState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mReLockDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;I)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;)Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mPausedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$PausedState;

    return-object p0
.end method


# virtual methods
.method isLocked()Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mLockedState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$LockedState;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onQuitting()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUpdater:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method preRequisitesChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method setReLockDelay(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mReLockDelay:J

    return-void
.end method

.method touchPressed()V
    .locals 1

    const/4 v0, 0x5

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method touchReleased()V
    .locals 1

    const/4 v0, 0x6

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mUpdater:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 92
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine;->mDefaultState:Lcom/android/systemui/statusbar/phone/NavigationBarLockStateMachine$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method unlock()V
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method windowHidden()V
    .locals 1

    const/4 v0, 0x3

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method
