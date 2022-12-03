package kr.board.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import kr.board.entity.Board;
@Mapper
public interface BoardMapper {

	public List<Board> boardList();

	public void boardInsert(Board board);

	public Board boardContent(int idx);

	public void boardUpdate(Board board);
}
