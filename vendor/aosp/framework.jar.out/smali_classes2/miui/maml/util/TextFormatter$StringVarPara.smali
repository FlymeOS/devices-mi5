.class Lmiui/maml/util/TextFormatter$StringVarPara;
.super Lmiui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .locals 3
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>(Lmiui/maml/util/TextFormatter$1;)V

    .line 210
    iput-object p2, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    .line 211
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/data/IndexedVariable;

    .line 212
    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lmiui/maml/util/TextFormatter$StringVarPara;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
