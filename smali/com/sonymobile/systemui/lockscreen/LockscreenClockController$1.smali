.class Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$1;
.super Ljava/lang/Object;
.source "LockscreenClockController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController$1;->this$0:Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/lockscreen/LockscreenClockController;->exitClockPicker()V

    return-void
.end method
