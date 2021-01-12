.class Lcom/android/systemui/recents/LegacyRecentsImpl$1;
.super Ljava/lang/Object;
.source "LegacyRecentsImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/LegacyRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/LegacyRecentsImpl;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$002(Lcom/android/systemui/recents/LegacyRecentsImpl;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 120
    invoke-static {}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x8cdc

    .line 118
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/LegacyRecentsImpl$1;->this$0:Lcom/android/systemui/recents/LegacyRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/LegacyRecentsImpl;->access$300(Lcom/android/systemui/recents/LegacyRecentsImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/LegacyRecentsImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/LegacyRecentsImpl$1$1;-><init>(Lcom/android/systemui/recents/LegacyRecentsImpl$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
