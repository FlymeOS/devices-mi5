.class Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;
.super Ljava/lang/Object;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordSize"
.end annotation


# instance fields
.field mRecordCount:I

.field mRecordSize:I

.field mTotalSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;[I)V
    .locals 1
    .param p2, "recordSize"    # [I

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 1097
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mTotalSize:I

    .line 1098
    const/4 v0, 0x2

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 1099
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RecordSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RecordCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mRecordCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TotalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$RecordSize;->mTotalSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
