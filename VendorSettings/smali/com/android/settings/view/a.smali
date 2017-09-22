.class Lcom/android/vendorsettings/view/a;
.super Ljava/lang/Object;
.source "GridPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic auO:Lcom/android/vendorsettings/view/GridPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/view/GridPreference;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/vendorsettings/view/a;->auO:Lcom/android/vendorsettings/view/GridPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/vendorsettings/view/a;->auO:Lcom/android/vendorsettings/view/GridPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/view/GridPreference;->a(Lcom/android/vendorsettings/view/GridPreference;)Lcom/android/vendorsettings/view/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f0400ba

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/vendorsettings/view/a;->auO:Lcom/android/vendorsettings/view/GridPreference;

    invoke-static {v1}, Lcom/android/vendorsettings/view/GridPreference;->a(Lcom/android/vendorsettings/view/GridPreference;)Lcom/android/vendorsettings/view/c;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/view/a;->auO:Lcom/android/vendorsettings/view/GridPreference;

    invoke-interface {v1, v2, v0}, Lcom/android/vendorsettings/view/c;->a(Lcom/android/vendorsettings/view/GridPreference;I)V

    .line 38
    :cond_0
    return-void
.end method
