.class Lcom/android/vendorsettings/deviceinfo/SimStatus$4;
.super Ljava/lang/Object;
.source "SimStatus.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field final synthetic WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$4;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/vendorsettings/deviceinfo/SimStatus$4;->WJ:Lcom/android/vendorsettings/deviceinfo/SimStatus;

    invoke-static {v1}, Lcom/android/vendorsettings/deviceinfo/SimStatus;->i(Lcom/android/vendorsettings/deviceinfo/SimStatus;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
