.class Lcom/android/settings/id;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic Bq:Lcom/android/settings/ir;

.field final synthetic Br:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/ir;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings/id;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/id;->Bq:Lcom/android/settings/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/id;->Br:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/id;->Bq:Lcom/android/settings/ir;

    invoke-virtual {v1, p3, p4}, Lcom/android/settings/ir;->d(II)Lcom/android/settings/io;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/io;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
