.class Lmiui/util/ErrorReport$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/ErrorReport$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private HM:Landroid/content/Context;

.field private HO:Ljava/lang/String;

.field private HQ:Landroid/app/ApplicationErrorReport$CrashInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Lmiui/util/ErrorReport$c;->HM:Landroid/content/Context;

    .line 475
    iput-object p2, p0, Lmiui/util/ErrorReport$c;->HO:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lmiui/util/ErrorReport$c;->HQ:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 477
    return-void
.end method


# virtual methods
.method public cX()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lmiui/util/ErrorReport$c;->HM:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$c;->HO:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/ErrorReport$c;->HQ:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->getExceptionData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
