.class final Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;
.super Ljava/lang/Object;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserSwitchState"
.end annotation


# instance fields
.field private mFactoryInitialized:Z

.field private mResourcesInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mFactoryInitialized:Z

    .line 660
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mResourcesInitialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardStatusView$1;)V
    .locals 0

    .line 658
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;-><init>()V

    return-void
.end method

.method private isCompleted()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mFactoryInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mResourcesInitialized:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public notifyFactoryInitializedAndCheckLoadNeeded()Z
    .locals 1

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mFactoryInitialized:Z

    .line 673
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->isCompleted()Z

    move-result p0

    return p0
.end method

.method public notifyResourceInitializedAndCheckLoadNeeded()Z
    .locals 1

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mResourcesInitialized:Z

    .line 682
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->isCompleted()Z

    move-result p0

    return p0
.end method

.method public startUserSwitch()V
    .locals 1

    const/4 v0, 0x0

    .line 663
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mFactoryInitialized:Z

    .line 664
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardStatusView$UserSwitchState;->mResourcesInitialized:Z

    return-void
.end method
