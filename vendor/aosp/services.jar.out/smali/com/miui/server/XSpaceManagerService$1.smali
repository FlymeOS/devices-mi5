.class final Lcom/miui/server/XSpaceManagerService$1;
.super Landroid/database/ContentObserver;
.source "XSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 258
    # getter for: Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "xspace_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 260
    # getter for: Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update XSpace status, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method
