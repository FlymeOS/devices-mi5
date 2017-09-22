.class Lcom/android/vendorsettings/gz;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xZ:Lcom/android/vendorsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/vendorsettings/gz;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/vendorsettings/gz;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->o(Lcom/android/vendorsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/vendorsettings/gz;->xZ:Lcom/android/vendorsettings/RadioInfo;

    invoke-static {v0}, Lcom/android/vendorsettings/RadioInfo;->E(Lcom/android/vendorsettings/RadioInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1050
    return-void

    .line 1049
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
