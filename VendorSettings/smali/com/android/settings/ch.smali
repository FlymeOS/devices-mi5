.class Lcom/android/settings/ch;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic lc:Lcom/android/settings/cg;


# direct methods
.method constructor <init>(Lcom/android/settings/cg;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings/ch;->lc:Lcom/android/settings/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings/ch;->lc:Lcom/android/settings/cg;

    iget-object v0, v0, Lcom/android/settings/cg;->lb:Lcom/android/settings/DeviceAdminAdd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method
