.class Lcom/android/vendorsettings/gL;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/vendorsettings/gL;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/vendorsettings/gL;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->P(Lcom/android/vendorsettings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1238
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/gL;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->m(Lcom/android/vendorsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt p3, v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/android/vendorsettings/gL;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v1}, Lcom/android/vendorsettings/RadioInfo;->o(Lcom/android/vendorsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1241
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 1244
    return-void
.end method
