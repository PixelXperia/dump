.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$2:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$3HeVl_YZvGErTn1GwHwdulJyD8w;->f$2:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->lambda$getMultiWindowButtonInvoker$1$MultiWindowButtonManager(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
