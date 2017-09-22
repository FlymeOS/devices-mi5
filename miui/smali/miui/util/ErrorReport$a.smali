.class Lmiui/util/ErrorReport$a;
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
    name = "a"
.end annotation


# instance fields
.field private HM:Landroid/content/Context;

.field private HO:Ljava/lang/String;

.field private HP:Landroid/app/ActivityManager$ProcessErrorStateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lmiui/util/ErrorReport$a;->HM:Landroid/content/Context;

    .line 492
    iput-object p2, p0, Lmiui/util/ErrorReport$a;->HO:Ljava/lang/String;

    .line 493
    iput-object p3, p0, Lmiui/util/ErrorReport$a;->HP:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 494
    return-void
.end method


# virtual methods
.method public cX()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lmiui/util/ErrorReport$a;->HM:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$a;->HO:Ljava/lang/String;

    iget-object v2, p0, Lmiui/util/ErrorReport$a;->HP:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
