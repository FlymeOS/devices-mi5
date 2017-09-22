.class Lcom/android/settings/cJ;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic mi:Landroid/view/View;

.field final synthetic mj:Lcom/android/settings/cH;


# direct methods
.method constructor <init>(Lcom/android/settings/cH;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/cJ;->mj:Lcom/android/settings/cH;

    iput-object p2, p0, Lcom/android/settings/cJ;->mi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/cJ;->mj:Lcom/android/settings/cH;

    iget-object v0, v0, Lcom/android/settings/cH;->mg:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/cA;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/cJ;->mi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cB;

    invoke-virtual {v1, v0}, Lcom/android/settings/cA;->a(Lcom/android/settings/cB;)V

    .line 338
    return-void
.end method
