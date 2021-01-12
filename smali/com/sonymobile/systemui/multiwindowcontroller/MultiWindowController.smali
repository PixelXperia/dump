.class public Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;
.super Ljava/lang/Object;
.source "MultiWindowController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dismissPipIfNeeded(Ljava/lang/String;)V
    .locals 8

    .line 410
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 412
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 414
    invoke-interface {p0, v3}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 416
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    iget v7, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    if-ne v6, v7, :cond_0

    .line 418
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 420
    :cond_0
    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v2, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 421
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    .line 423
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-array p1, v3, [I

    aput v0, p1, v1

    .line 426
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeStacksInWindowingModes([I)V

    const-wide/16 p0, 0x1f4

    .line 428
    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 432
    sget-object p1, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string v0, "Failed to dismiss pip."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private getActivityType(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 319
    :cond_0
    iget-object p0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 320
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    return p0
.end method

.method private getActivityType(Landroid/app/ActivityManager$StackInfo;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 328
    :cond_0
    iget-object p0, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 329
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    return p0
.end method

.method private getAppName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 4

    .line 375
    iget-object p0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 380
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 385
    sget-object v0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".getAppName componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " NameNotFoundException="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 364
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private getDockSide()I
    .locals 3

    .line 393
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 395
    sget-object v0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get dock side: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private getPackageName(Landroid/app/ActivityManager$StackInfo;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 351
    :cond_0
    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getRecentTask(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 266
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot launch primary app because taskId is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 271
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 272
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    const/4 v3, 0x1

    .line 274
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 271
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 276
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 277
    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getActivityType(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v3

    .line 279
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->isActivityTypeStandardOrUndefined(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 284
    :cond_2
    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, p1, :cond_1

    return-object v2

    .line 289
    :catch_0
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get task info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getRecentTask(Ljava/lang/String;Z)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 4

    .line 232
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 233
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    const/4 v2, 0x1

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 232
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 238
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 243
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getActivityType(Landroid/app/ActivityManager$RecentTaskInfo;)I

    move-result v3

    if-eqz v2, :cond_0

    .line 245
    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->isActivityTypeStandardOrUndefined(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_2

    .line 251
    iget-boolean v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :cond_2
    return-object v1

    .line 257
    :catch_0
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "Failed to get task info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTopFullscreenStack()Landroid/app/ActivityManager$StackInfo;
    .locals 6

    .line 298
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    .line 302
    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getWindowingMode(Landroid/app/ActivityManager$StackInfo;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 303
    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getActivityType(Landroid/app/ActivityManager$StackInfo;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    sget-object v0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get top fullscreen stack"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTopTaskId(Landroid/app/ActivityManager$StackInfo;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 402
    iget-object p0, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz p0, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    .line 403
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private getWindowingMode(Landroid/app/ActivityManager$StackInfo;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 337
    :cond_0
    iget-object p0, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 338
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method private isActivityTypeStandardOrUndefined(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private launchApp(Landroid/app/PendingIntent;)V
    .locals 2

    if-nez p1, :cond_0

    .line 137
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "PendingIntent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    sget-object p1, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending intent failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private launchFromRecents(ILandroid/app/ActivityOptions;)V
    .locals 0

    .line 215
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "Failed to start activity from recents"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private launchPrimaryAppFromRecent(ILandroid/app/ActivityManager$StackInfo;)V
    .locals 3

    .line 191
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getRecentTask(I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getPackageName(Landroid/app/ActivityManager$StackInfo;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->activity_launch_with_mw_failed:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->showToast(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_0
    iget-boolean p2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez p2, :cond_1

    .line 200
    iget-object p1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getAppName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->activity_not_support_mw:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->showToast(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    const/4 v0, 0x3

    .line 206
    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 207
    invoke-virtual {p2, v2}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchFromRecents(ILandroid/app/ActivityOptions;)V

    return-void
.end method

.method private launchSecondaryApp(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    .line 152
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "pendingIntent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot launch secondary app because package name is null or invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Unknown app"

    .line 166
    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x4

    .line 167
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v2, 0x1

    .line 168
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0, p2, v3}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getRecentTask(Ljava/lang/String;Z)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 173
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    sget-object p1, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending intent failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    iget-boolean v4, p2, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-nez v4, :cond_4

    .line 179
    iget-object p1, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->activity_not_support_mw:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->showToast(Ljava/lang/String;)V

    return-void

    .line 181
    :cond_4
    iget p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-lez p2, :cond_5

    .line 182
    invoke-direct {p0, p2, v1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchFromRecents(ILandroid/app/ActivityOptions;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchApp(Landroid/app/PendingIntent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static setForceMinimizedDisabled(Z)V
    .locals 3

    :try_start_0
    const-string v0, "window"

    .line 120
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 121
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setForceMinimizedDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    sget-object v0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceMinimizedDisabled RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$fQNhGbfyFQasUK1XwlxI6ozdPCU;-><init>(Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$launchMultiWindow$0$MultiWindowController(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {v0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->setForceMinimizedDisabled(Z)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchSecondaryApp(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showToast$1$MultiWindowController(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public launchMultiWindow(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 75
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->dismissPipIfNeeded(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getTopFullscreenStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchApp(Landroid/app/PendingIntent;)V

    return-void

    .line 82
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getActivityType(Landroid/app/ActivityManager$StackInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getTopTaskId(Landroid/app/ActivityManager$StackInfo;)I

    move-result v1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p2, v2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->getRecentTask(Ljava/lang/String;Z)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 94
    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v3, v1, :cond_2

    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 97
    iget-object p2, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->dialog_open_app_with_foreground:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->showToast(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchApp(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v4}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->setForceMinimizedDisabled(Z)V

    .line 101
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchPrimaryAppFromRecent(ILandroid/app/ActivityManager$StackInfo;)V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$EziFkpEpeGi2QqZocofrc29rA4g;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/-$$Lambda$MultiWindowController$EziFkpEpeGi2QqZocofrc29rA4g;-><init>(Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;Landroid/app/PendingIntent;Ljava/lang/String;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 86
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->dialog_mw_button_is_valid_only_when_using_apps:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->showToast(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchApp(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 113
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchApp(Landroid/app/PendingIntent;)V

    :goto_1
    return-void
.end method
