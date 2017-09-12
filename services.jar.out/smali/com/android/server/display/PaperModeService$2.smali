.class Lcom/android/server/display/PaperModeService$2;
.super Ljava/lang/Object;
.source "PaperModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/PaperModeService;->updatePkgPaperMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/PaperModeService;


# direct methods
.method constructor <init>(Lcom/android/server/display/PaperModeService;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/display/PaperModeService$2;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/display/PaperModeService$2;->this$0:Lcom/android/server/display/PaperModeService;

    invoke-virtual {v0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x11070091

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    return-void
.end method
