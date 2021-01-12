.class Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;
.super Ljava/lang/Object;
.source "BackgroundTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/BackgroundTaskLoader;->processLoadQueueItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$t:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic val$thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/BackgroundTaskLoader;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->this$0:Lcom/android/systemui/recents/model/BackgroundTaskLoader;

    iput-object p2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput-object p4, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$t:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object p0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader$3;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
