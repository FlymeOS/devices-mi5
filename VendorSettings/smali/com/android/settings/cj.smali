.class Lcom/android/settings/cj;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic lg:Lcom/android/settings/DeviceAdminAddFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/cj;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/cj;->lg:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/DeviceAdminAddFragment;->c(Landroid/view/View;)V

    .line 195
    return-void
.end method
