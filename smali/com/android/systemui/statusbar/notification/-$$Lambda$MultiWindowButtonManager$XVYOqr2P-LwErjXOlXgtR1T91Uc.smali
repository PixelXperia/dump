.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$0:Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$1:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MultiWindowButtonManager$XVYOqr2P-LwErjXOlXgtR1T91Uc;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/MultiWindowButtonManager;->lambda$getMultiWindowButtonInvoker$0$MultiWindowButtonManager(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method
