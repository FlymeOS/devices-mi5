.class Lcom/android/vendorsettings/gU;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field index:I

.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;

.field ye:[I


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 1

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/vendorsettings/gU;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/vendorsettings/gU;->ye:[I

    .line 1055
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/gU;->index:I

    return-void

    .line 1054
    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public he()I
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/vendorsettings/gU;->ye:[I

    iget v1, p0, Lcom/android/vendorsettings/gU;->index:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1063
    iget v0, p0, Lcom/android/vendorsettings/gU;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vendorsettings/gU;->index:I

    .line 1064
    iget v0, p0, Lcom/android/vendorsettings/gU;->index:I

    iget-object v1, p0, Lcom/android/vendorsettings/gU;->ye:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vendorsettings/gU;->index:I

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/gU;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->o(Lcom/android/vendorsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/gU;->ye:[I

    iget v2, p0, Lcom/android/vendorsettings/gU;->index:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/vendorsettings/gU;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->F(Lcom/android/vendorsettings/RadioInfo;)V

    .line 1069
    return-void
.end method
