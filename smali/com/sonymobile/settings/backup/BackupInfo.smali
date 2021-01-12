.class public Lcom/sonymobile/settings/backup/BackupInfo;
.super Ljava/lang/Object;
.source "BackupInfo.java"


# instance fields
.field private mContentTypeIds:Ljava/lang/String;

.field private mIsAutoBackupOn:Z

.field private mIsNewBackup:Z

.field private mLastBackupTime:J

.field private mLastUnsuccessfulBackupLocation:I

.field private mLastUnsuccessfulBackupReason:I

.field private mNextAutoBackupTime:J

.field private mWaitingForBackupCondition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentTypeIds()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mContentTypeIds:Ljava/lang/String;

    return-object p0
.end method

.method public getLastBackupTime()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastBackupTime:J

    return-wide v0
.end method

.method public getLastUnsuccessfulBackupLocation()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    return p0
.end method

.method public getLastUnsuccessfulBackupReason()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    return p0
.end method

.method public getNextAutoBackupTime()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mNextAutoBackupTime:J

    return-wide v0
.end method

.method public getWaitingForBackupCondition()I
    .locals 0

    .line 183
    iget p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mWaitingForBackupCondition:I

    return p0
.end method

.method public hasRelevantErrors()Z
    .locals 3

    .line 219
    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsNewBackup:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAutoBackupOn()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    return p0
.end method

.method public setAutoBackupOn(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsAutoBackupOn:Z

    return-void
.end method

.method public setContentTypeIds(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mContentTypeIds:Ljava/lang/String;

    return-void
.end method

.method public setIsNewBackup(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mIsNewBackup:Z

    return-void
.end method

.method public setLastBackupTime(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastBackupTime:J

    return-void
.end method

.method public setLastUnsuccessfulBackupLocation(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupLocation:I

    return-void
.end method

.method public setLastUnsuccessfulBackupReason(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mLastUnsuccessfulBackupReason:I

    return-void
.end method

.method public setNextAutoBackupTime(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mNextAutoBackupTime:J

    return-void
.end method

.method public setWaitingForBackupCondition(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/sonymobile/settings/backup/BackupInfo;->mWaitingForBackupCondition:I

    return-void
.end method
