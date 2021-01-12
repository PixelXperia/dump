.class Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;
.super Landroid/os/AsyncTask;
.source "LockscreenSkinningController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResourcesLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->mController:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/res/Resources;
    .locals 4

    .line 204
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance p1, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;

    invoke-direct {p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->init(Landroid/content/Context;)V

    :try_start_0
    const-string v1, "com.android.systemui"

    .line 213
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinnedResourcesForCurrentSkin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinnedResources;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/runtimeskinning/RuntimeSkinningException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 221
    invoke-static {}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 219
    invoke-static {}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeSkinningException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 217
    invoke-static {}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->reset()V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->doInBackground([Ljava/lang/Void;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/res/Resources;)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->mController:Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;

    invoke-static {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;->access$300(Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController;Landroid/content/res/Resources;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/lockscreen/theme/LockscreenSkinningController$AsyncTaskResourcesLoader;->onPostExecute(Landroid/content/res/Resources;)V

    return-void
.end method
