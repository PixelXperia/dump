.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;,
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private final mTmpLockedUsers:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;)V
    .locals 10

    .line 171
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 177
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 178
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 180
    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v1

    .line 181
    :goto_1
    iget v6, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v6, v0, v6

    if-lt v2, v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v1

    .line 182
    :goto_2
    iget v8, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v8, v0, v8

    if-lt v2, v8, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, v1

    .line 185
    :goto_3
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v9, :cond_3

    if-eqz v5, :cond_3

    goto :goto_4

    .line 189
    :cond_3
    iget-boolean v9, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v9, :cond_5

    if-nez v5, :cond_4

    if-eqz v6, :cond_5

    .line 190
    :cond_4
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    .line 191
    iget-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v4, v5, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_5
    iget-boolean v5, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v5, :cond_6

    if-eqz v8, :cond_6

    .line 196
    invoke-virtual {p2, v4, v7, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object p0
.end method

.method public hasTasks()Z
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/recents/model/RecentsTaskLoader;II)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 94
    iget-object v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v4, :cond_0

    .line 97
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    .line 98
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v5

    move/from16 v6, p4

    .line 97
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 101
    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 104
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    .line 106
    iget-object v7, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 109
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    .line 111
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    .line 113
    :cond_1
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_1
    move-object v13, v8

    .line 114
    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v8

    .line 115
    new-instance v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v12, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v14, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move/from16 v30, v6

    iget-wide v5, v7, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    iget v11, v7, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    move-object v9, v15

    move/from16 v17, v11

    move v11, v8

    move/from16 v31, v4

    move-object v4, v15

    move-wide v15, v5

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v8, v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    xor-int/lit8 v23, v5, 0x1

    .line 120
    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move/from16 v8, p3

    if-ne v5, v8, :cond_3

    move/from16 v22, v6

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    .line 122
    :goto_3
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_8

    .line 128
    :cond_4
    iget-boolean v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    const-string v10, ""

    if-eqz v9, :cond_5

    .line 129
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    goto :goto_4

    :cond_5
    move-object/from16 v18, v10

    .line 131
    :goto_4
    iget-boolean v9, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    if-eqz v9, :cond_6

    .line 132
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_5

    :cond_6
    move-object/from16 v19, v10

    :goto_5
    if-eqz v23, :cond_7

    .line 135
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v9, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    const/4 v9, 0x0

    :goto_6
    move-object/from16 v16, v9

    .line 137
    invoke-virtual {v2, v4, v10, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v17

    .line 139
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v20

    .line 140
    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v21

    if-eqz v5, :cond_8

    .line 141
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    move/from16 v24, v6

    goto :goto_7

    :cond_8
    const/16 v24, 0x0

    .line 145
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_9

    .line 146
    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget-object v9, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v9, v10}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    :cond_9
    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v29

    .line 151
    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v6, v7, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    iget-object v7, v7, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v14, v5

    move-object v15, v4

    move/from16 v25, v6

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-object/from16 v28, v7

    invoke-direct/range {v14 .. v29}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Z)V

    .line 156
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v6, v30, 0x1

    move/from16 v4, v31

    goto/16 :goto_0

    .line 160
    :cond_a
    new-instance v1, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 161
    iget-object v0, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Ljava/util/List;Z)V

    return-void
.end method
