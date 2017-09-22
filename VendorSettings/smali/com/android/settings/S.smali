.class Lcom/android/vendorsettings/S;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bI:Lcom/android/vendorsettings/R;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/R;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/vendorsettings/S;->bI:Lcom/android/vendorsettings/R;

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

    check-cast v0, Lcom/android/vendorsettings/V;

    .line 360
    iget-object v1, p0, Lcom/android/vendorsettings/S;->bI:Lcom/android/vendorsettings/R;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/R;->a(Lcom/android/vendorsettings/V;)V

    .line 361
    return-void
.end method
