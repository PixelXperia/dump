.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method public setActivityStarterImpl(Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez p0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
