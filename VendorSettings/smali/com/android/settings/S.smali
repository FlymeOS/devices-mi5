.class Lcom/android/settings/S;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bI:Lcom/android/settings/R;


# direct methods
.method constructor <init>(Lcom/android/settings/R;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/S;->bI:Lcom/android/settings/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    const v0, 0x7f0c114d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/V;

    .line 360
    iget-object v1, p0, Lcom/android/settings/S;->bI:Lcom/android/settings/R;

    invoke-virtual {v1, v0}, Lcom/android/settings/R;->a(Lcom/android/settings/V;)V

    .line 361
    return-void
.end method
