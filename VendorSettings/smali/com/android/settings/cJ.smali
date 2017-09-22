.class Lcom/android/vendorsettings/cJ;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mi:Landroid/view/View;

.field final synthetic mj:Lcom/android/vendorsettings/cH;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/cH;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/vendorsettings/cJ;->mj:Lcom/android/vendorsettings/cH;

    iput-object p2, p0, Lcom/android/vendorsettings/cJ;->mi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/vendorsettings/cJ;->mj:Lcom/android/vendorsettings/cH;

    iget-object v0, v0, Lcom/android/vendorsettings/cH;->mg:Lcom/android/vendorsettings/DreamSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/DreamSettings;->a(Lcom/android/vendorsettings/DreamSettings;)Lcom/android/vendorsettings/cA;

    move-result-object v1

    iget-object v0, p0, Lcom/android/vendorsettings/cJ;->mi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/cB;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/cA;->a(Lcom/android/vendorsettings/cB;)V

    .line 338
    return-void
.end method
