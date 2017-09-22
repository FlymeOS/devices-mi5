.class Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->LY:Lcom/android/vendorsettings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/ProcessStatsDetail$5;->val$name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/vendorsettings/applications/ProcessStatsDetail;->b(Lcom/android/vendorsettings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method
