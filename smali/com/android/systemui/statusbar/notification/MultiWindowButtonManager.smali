.class public Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;
.super Ljava/lang/Object;
.source "MultiWindowButtonManager.java"


# static fields
.field public static final DEBUG_MW:Z

.field public static final DEBUG_MW_TAG:Ljava/lang/String; = "MultiWindowButtonManager"


# instance fields
.field private final mBlacklist:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$array;->multiwindow_button_pkg_blacklist:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mBlacklist:[Ljava/lang/String;

    return-void
.end method

.method private getMultiWindowButtonInvoker(Landroid/app/PendingIntent;)Ljava/lang/Runnable;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 132
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: No contentIntent and fullScreenIntent"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: not Activity"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    .line 140
    :cond_3
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 142
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: get raw intent"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x20000

    .line 147
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 148
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_6

    goto/16 :goto_1

    .line 153
    :cond_6
    iget v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-nez v5, :cond_8

    .line 154
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiWindowButtonInvoker failed: resizeMode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v0

    .line 159
    :cond_8
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 161
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: no packageName"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v0

    .line 164
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mBlacklist:[Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_c

    .line 165
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiWindowButtonInvoker failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is in blacklist."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v0

    .line 169
    :cond_c
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    .line 170
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    .line 172
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 173
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_d

    goto :goto_0

    .line 178
    :cond_d
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMultiWindowButtonInvoker OK: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resizeMode="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_e
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;

    invoke-direct {v0, p0, v4, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;-><init>(Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0

    .line 174
    :cond_f
    :goto_0
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_10

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiWindowButtonInvoker no CATEGORY_LAUNCHER on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v0

    .line 149
    :cond_11
    :goto_1
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_12

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: get activityInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v0
.end method

.method private static isEmergencyModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "somc.emergency_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSpecialHome(Landroid/content/Context;)Z
    .locals 1

    .line 201
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->isEmergencyModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isUsmEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "somc.ultrastamina_mode"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getMultiWindowButtonInvoker(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Runnable;
    .locals 1

    if-nez p1, :cond_1

    .line 119
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string p1, "getMultiWindowButtonInvoker failed: No entry"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 125
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 127
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->getMultiWindowButtonInvoker(Landroid/app/PendingIntent;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public isForegroundResizeable()Z
    .locals 8

    .line 65
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-interface {p0}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 68
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForegroundResizeable stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_d

    .line 69
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 73
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    .line 74
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v4, :cond_b

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eq v3, v5, :cond_4

    .line 81
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Foreground activity is not standard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    .line 86
    :cond_4
    iget v2, v1, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 87
    iget v3, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v4, -0x1

    .line 89
    iget-object v6, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v6, :cond_5

    iget-object v6, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-lez v6, :cond_5

    .line 90
    iget-object v1, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v4, v1, v0

    :cond_5
    if-ltz v3, :cond_9

    if-gez v4, :cond_6

    goto :goto_0

    .line 98
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    .line 97
    invoke-interface {p0, v1, v5, v2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 101
    sget-boolean v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resentTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " stackId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " persistentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " resizeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_8
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v2, v4, :cond_7

    .line 105
    iget p0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    if-eqz p0, :cond_e

    return v5

    .line 94
    :cond_9
    :goto_0
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    const-string v1, "Failed to resolve stackId and taskId"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    .line 77
    :cond_b
    :goto_1
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split screen mode is activated: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    return v5

    :cond_d
    :goto_2
    return v0

    :catch_0
    move-exception p0

    .line 112
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check foreground stack. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v0
.end method

.method public synthetic lambda$getMultiWindowButtonInvoker$0$MultiWindowButtonManager(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/systemui/multiwindowcontroller/MultiWindowController;->launchMultiWindow(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$getMultiWindowButtonInvoker$1$MultiWindowButtonManager(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    .line 181
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->DEBUG_MW_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowButtonInvoker#run packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sonymobile.ULTRA_STAMINA_FEATURE_NOT_SUPPORTED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 193
    :cond_1
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;-><init>(Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method
