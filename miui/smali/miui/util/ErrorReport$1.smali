.class final Lmiui/util/ErrorReport$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lmiui/util/ErrorReport$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic HJ:Lmiui/util/ErrorReport$b;

.field final synthetic HL:I

.field final synthetic iY:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lmiui/util/ErrorReport$b;I)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lmiui/util/ErrorReport$1;->iY:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$1;->HJ:Lmiui/util/ErrorReport$b;

    iput p3, p0, Lmiui/util/ErrorReport$1;->HL:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lmiui/util/ErrorReport$1;->iY:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$1;->HJ:Lmiui/util/ErrorReport$b;

    invoke-interface {v1}, Lmiui/util/ErrorReport$b;->cX()Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lmiui/util/ErrorReport$1;->HL:I

    invoke-static {v0, v1, v2}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/util/ErrorReport$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
