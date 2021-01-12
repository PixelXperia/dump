.class Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/HighResThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$400(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$600(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;-><init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xb

    .line 206
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v1

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$100(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_3

    .line 221
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$300(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 212
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$202(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z

    .line 213
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$202(Lcom/android/systemui/recents/model/HighResThumbnailLoader;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :catch_0
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->loadTask(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 224
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
