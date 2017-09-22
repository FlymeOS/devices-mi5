.class Lcom/android/settings/applications/ManageAssist$2;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Kr:Lcom/android/settings/applications/ManageAssist;

.field final synthetic Ks:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/applications/ManageAssist$2;->Kr:Lcom/android/settings/applications/ManageAssist;

    iput-object p2, p0, Lcom/android/settings/applications/ManageAssist$2;->Ks:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist$2;->Kr:Lcom/android/settings/applications/ManageAssist;

    iget-object v1, p0, Lcom/android/settings/applications/ManageAssist$2;->Ks:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageAssist;->a(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 177
    return-void
.end method
