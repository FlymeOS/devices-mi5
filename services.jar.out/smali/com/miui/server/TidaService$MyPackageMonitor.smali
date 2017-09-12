.class Lcom/miui/server/TidaService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TidaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/TidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/TidaService;


# direct methods
.method private constructor <init>(Lcom/miui/server/TidaService;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/TidaService;Lcom/miui/server/TidaService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/server/TidaService;
    .param p2, "x1"    # Lcom/miui/server/TidaService$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService$MyPackageMonitor;-><init>(Lcom/miui/server/TidaService;)V

    return-void
.end method


# virtual methods
.method public onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    # invokes: Lcom/miui/server/TidaService;->onUidRemoved(I)V
    invoke-static {v0, p1}, Lcom/miui/server/TidaService;->access$000(Lcom/miui/server/TidaService;I)V

    .line 44
    return-void
.end method
