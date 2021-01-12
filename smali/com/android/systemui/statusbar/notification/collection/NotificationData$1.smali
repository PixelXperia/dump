.class Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 80
    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 13

    .line 84
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 85
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$000(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v3

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    .line 97
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v5

    .line 98
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    goto :goto_0

    :cond_0
    move v2, v3

    move v5, v4

    move v6, v5

    .line 101
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$100(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v7

    .line 104
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    if-le v3, v9, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v4

    .line 106
    :goto_1
    iget-object v10, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-le v2, v9, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    const/4 v10, 0x4

    if-lt v3, v10, :cond_3

    .line 110
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v9

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-lt v2, v10, :cond_4

    .line 112
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v9

    goto :goto_4

    :cond_4
    move v2, v4

    .line 115
    :goto_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v10

    .line 116
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v11

    if-nez v10, :cond_6

    if-nez v8, :cond_6

    if-nez v3, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    move v12, v4

    goto :goto_6

    :cond_6
    :goto_5
    move v12, v9

    :goto_6
    invoke-virtual {p1, v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    if-nez v11, :cond_7

    if-nez v7, :cond_7

    if-nez v2, :cond_7

    .line 122
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    move v4, v9

    :cond_8
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsTopBucket(Z)V

    const/4 v4, -0x1

    if-eq v10, v11, :cond_a

    if-eqz v10, :cond_9

    goto :goto_7

    :cond_9
    move v4, v9

    :goto_7
    return v4

    :cond_a
    if-eqz v10, :cond_b

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->access$300(Lcom/android/systemui/statusbar/notification/collection/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0

    .line 129
    :cond_b
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result v10

    if-eq p0, v10, :cond_d

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingAmbientPulsing()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_8

    :cond_c
    move v4, v9

    :goto_8
    return v4

    :cond_d
    if-eq v8, v7, :cond_f

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    move v4, v9

    :goto_9
    return v4

    :cond_f
    if-eq v3, v2, :cond_11

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move v4, v9

    :goto_a
    return v4

    .line 137
    :cond_11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v2

    if-eq p0, v2, :cond_12

    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    mul-int/2addr p0, v4

    return p0

    :cond_12
    if-eq v5, v6, :cond_13

    sub-int/2addr v5, v6

    return v5

    .line 142
    :cond_13
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-wide p0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-wide v0, p2, Landroid/app/Notification;->when:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
