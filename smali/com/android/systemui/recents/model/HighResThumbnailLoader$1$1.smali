.class Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->loadTask(Lcom/android/systemui/shared/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

.field final synthetic val$t:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic val$thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->this$1:Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    iput-object p2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->this$1:Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    iget-object v0, v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$000(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;

    move-result-object v0

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->this$1:Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    iget-object v1, v1, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$300(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->this$1:Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;

    iget-object v0, v0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1;->this$0:Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    invoke-static {v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->access$500(Lcom/android/systemui/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/systemui/recents/model/HighResThumbnailLoader$1$1;->val$thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
