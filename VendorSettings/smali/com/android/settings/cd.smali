.class Lcom/android/settings/cd;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic lb:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/cd;->lb:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/cd;->lb:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, p0, Lcom/android/settings/cd;->lb:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->kN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->c(Landroid/view/View;)V

    .line 253
    return-void
.end method
