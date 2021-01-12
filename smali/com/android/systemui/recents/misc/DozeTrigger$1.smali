.class Lcom/android/systemui/recents/misc/DozeTrigger$1;
.super Ljava/lang/Object;
.source "DozeTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/DozeTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/DozeTrigger;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/DozeTrigger;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/recents/misc/DozeTrigger$1;->this$0:Lcom/android/systemui/recents/misc/DozeTrigger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsDozing:Z

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mIsAsleep:Z

    .line 44
    iget-object p0, p0, Lcom/android/systemui/recents/misc/DozeTrigger;->mOnSleepRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
