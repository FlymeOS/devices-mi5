.class Lcom/miui/server/SecurityManagerService$AppItem;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppItem"
.end annotation


# instance fields
.field mCheckEnable:Z

.field mPkg:Ljava/lang/String;

.field mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "ce"    # Z

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$AppItem;->mPkg:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$AppItem;->mSignature:Ljava/lang/String;

    .line 178
    iput-boolean p3, p0, Lcom/miui/server/SecurityManagerService$AppItem;->mCheckEnable:Z

    .line 179
    return-void
.end method
